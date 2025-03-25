prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_tab_set=>'TS1'
,p_name=>'Study Schedule'
,p_step_title=>'Study Schedule'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function waring_alert()',
'{',
'  apex.confirm(htmldb_delete_message,''DELETE_IN_VISIT_SCHEDULE'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10579070437741577101)
,p_plug_name=>'Parent'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130032281911979)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10579070484279577102)
,p_plug_name=>'Visit Schedule'
,p_parent_plug_id=>wwv_flow_imp.id(10579070437741577101)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146132256919911981)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':APP_EDC_ROLE_ID = 13'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12146607725217382500)
,p_name=>'Study Schedule'
,p_parent_plug_id=>wwv_flow_imp.id(10579070437741577101)
,p_template=>wwv_flow_imp.id(12146132256919911981)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PARAM_ID',
'     , VISIT_NAME',
'     --, VISIT',
'     , VISIT_TYPE  ',
'     , DURATION',
'     , WINDOW_PERIOD_P',
'     , WINDOW_PERIOD_M',
'     , TOTAL_CRF_PAGES',
'     , DISP_SEQ',
'     , CALCULATED_ON',
'     ',
'     , (SELECT ''Visit -''||PVP.DISP_SEQ||'' ''||PVP.VISIT_NAME AS D',
'          FROM EDC_PATIENT_VISIT_PARAMS PVP',
'         WHERE PVP.PARAM_ID = EDC_PATIENT_VISIT_PARAMS.PARAM_ID_FK',
'           AND STUDY_ID     = :APP_EDC_STUDY_ID',
'        ) AS "Duration From"',
'     ',
'     , CASE WHEN NVL(WINDOW_PERIOD_ALERT,0) = 1 THEN',
'                ''Yes''',
'            ELSE',
'                ''No''',
'       END AS "Window Period Alert"',
'     ',
'     , null as link',
'     , PARAM_ID AS "Edit",',
'     RND_FLG "Randomization?"',
'     ,SFL_FLG "Screen Fail?"',
'     ,DISPNS_FLG "Dispensing?"',
'     ,CMPLT_FLG "Complete"     ',
'  from EDC_PATIENT_VISIT_PARAMS',
' where study_id = :APP_EDC_STUDY_ID',
' ORDER  BY 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'i_multi number;',
'begin',
'  select nvl(multi_schedule,0) into i_multi from EDC_study where study_id=:APP_EDC_STUDY_ID;',
'  if i_multi=0 then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'exception',
' when others then ',
'   return false;',
'end;'))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(12146133941701911984)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECODE(VISIT_NAME,''Screening Visit'',''Screening Visit'',',
'                            ''Visit - 1'',''Randomization/Catheter Insertion'',',
'                            ''Visit - 2'',''Catheter Removal'',',
'                            ''Visit - 3'',''Followup'') as "VISIT_TYPE",  '))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608038903382504)
,p_query_column_id=>1
,p_column_alias=>'PARAM_ID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608225228382504)
,p_query_column_id=>2
,p_column_alias=>'VISIT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Visit Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608353792382504)
,p_query_column_id=>3
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Visit Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608444241382504)
,p_query_column_id=>4
,p_column_alias=>'DURATION'
,p_column_display_sequence=>6
,p_column_heading=>'Duration<br/>(in Days)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608526001382504)
,p_query_column_id=>5
,p_column_alias=>'WINDOW_PERIOD_P'
,p_column_display_sequence=>9
,p_column_heading=>'Window Period (+)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608646783382505)
,p_query_column_id=>6
,p_column_alias=>'WINDOW_PERIOD_M'
,p_column_display_sequence=>10
,p_column_heading=>'Window Period (-)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608743730382505)
,p_query_column_id=>7
,p_column_alias=>'TOTAL_CRF_PAGES'
,p_column_display_sequence=>11
,p_column_heading=>'Total CRF <br/>Pages'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146608844310382505)
,p_query_column_id=>8
,p_column_alias=>'DISP_SEQ'
,p_column_display_sequence=>3
,p_column_heading=>'Visit #'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10579073148985577128)
,p_query_column_id=>9
,p_column_alias=>'CALCULATED_ON'
,p_column_display_sequence=>8
,p_column_heading=>'Calculated On'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10579073289960577130)
,p_query_column_id=>10
,p_column_alias=>'Duration From'
,p_column_display_sequence=>7
,p_column_heading=>'Duration From'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10579074727101577144)
,p_query_column_id=>11
,p_column_alias=>'Window Period Alert'
,p_column_display_sequence=>12
,p_column_heading=>'Window <br/>Period <br/>Alert'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12146617246059764964)
,p_query_column_id=>12
,p_column_alias=>'LINK'
,p_column_display_sequence=>13
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:194:P194_PARAM_ID,P194_VISIT_TITLE:#PARAM_ID#,#VISIT_TITLE#'
,p_column_linktext=>'CRF Pages'
,p_column_link_attr=>'onclick="return false;" class="edit-crfpages"'
,p_report_column_required_role=>wwv_flow_imp.id(12146159132002328484)
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10579073384018577131)
,p_query_column_id=>13
,p_column_alias=>'Edit'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_PARAM_ID:#PARAM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':APP_EDC_ROLE_ID = 13'
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138401645074542381)
,p_query_column_id=>14
,p_column_alias=>'Randomization?'
,p_column_display_sequence=>14
,p_column_heading=>'Randomization?'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138401673537542382)
,p_query_column_id=>15
,p_column_alias=>'Screen Fail?'
,p_column_display_sequence=>15
,p_column_heading=>'Screen fail?'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138401766490542383)
,p_query_column_id=>16
,p_column_alias=>'Dispensing?'
,p_column_display_sequence=>16
,p_column_heading=>'Dispensing?'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138401947737542384)
,p_query_column_id=>17
,p_column_alias=>'Complete'
,p_column_display_sequence=>17
,p_column_heading=>'Complete'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12146838242321756762)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-right:5px;"'
,p_plug_template=>wwv_flow_imp.id(12146131749834911981)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(12146155451198328465)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12146135651272911987)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12147155550815017281)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(12146130233942911979)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(12146139932546912016)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(12146137930501911991)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10579072550791577122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_button_name=>'ADD_IN_VISIT_SCHEDULE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10579072625553577123)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_button_name=>'DELETE_IN_VISIT_SCHEDULE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:waring_alert();'
,p_button_execute_validations=>'N'
,p_button_condition=>'P13_PARAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10579072748245577124)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_button_name=>'UPDATE_IN_VISIT_SCHEDULE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_PARAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10579072805005577125)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_button_name=>'CANCEL_IN_VISIT_SCHEDULE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(12146136944085911990)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12146261350523428747)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138401949937542385)
,p_name=>'P13_RND_FLG'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT RND_FLG',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402060394542386)
,p_name=>'P13_SFL_FLG'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT SFL_FLG',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402225265542387)
,p_name=>'P13_DISPNS_FLG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT DISPNS_FLG',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402296606542388)
,p_name=>'P13_CMPLT_FLG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT CMPLT_FLG',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402392990542389)
,p_name=>'P13_RND_FLG_LBL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Randomization<BR/></center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402532279542390)
,p_name=>'P13_SFL_FLG_LBL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Screen<BR/>Fail<BR/> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402633356542391)
,p_name=>'P13_DISPNS_FLG_LBL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Dispensing<BR/></center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10138402695805542392)
,p_name=>'P13_CMPLT_FLG_LBL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Complete<BR/><span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579070666179577104)
,p_name=>'P13_PARAM_SEQ_LBL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Visit#&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579070825891577105)
,p_name=>'P13_VISIT_NAME_LBL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Visit Name&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579070912505577106)
,p_name=>'P13_VISIT_TYPE_LBL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Visit Type&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071003846577107)
,p_name=>'P13_DURATION_LBL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Duration<BR/>(In Days)&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071067964577108)
,p_name=>'P13_DURATION_FROM_LBL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Duration From&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := 0;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NULL THEN',
'   --Get new visit#',
'    SELECT NVL(MAX(DISP_SEQ),0)+1',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NULL',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ',
'  ELSIF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT NVL(DISP_SEQ,1)',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  IF V_TEMP <> 1 THEN',
'      RETURN TRUE;',
'  ELSE',
'      RETURN FALSE;',
'  END IF;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN TRUE;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071239628577109)
,p_name=>'P13_CALCULATED_ON_LBL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Calculated<BR/>On&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071324020577110)
,p_name=>'P13_WIN_P_LBL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Window<BR/>Period<BR/>(+)&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071392529577111)
,p_name=>'P13_WIN_N_LBL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Window<BR/>Period<BR/>(-)&nbsp;<span style="color:red;">*</span> </center><b/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071469776577112)
,p_name=>'P13_CRF_PAGES_LBL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>CRF<BR/>Pages</center></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071607378577113)
,p_name=>'P13_PARAM_SEQ'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := 0;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NULL THEN',
'   --Get new visit#',
'    SELECT NVL(MAX(DISP_SEQ),0)+1',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NULL',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ',
'  ELSIF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT NVL(DISP_SEQ,1)',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071668263577114)
,p_name=>'P13_VISIT_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT VISIT_NAME',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID      = :P13_PARAM_ID',
'       AND STUDY_ID      = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>35
,p_tag_attributes=>'style="width:175px;"'
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071766796577115)
,p_name=>'P13_VISIT_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(1000);',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT VISIT_TYPE',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDC_PATIENT_VISIT_TYPE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv.display_value d, lv.stored_value r from edc_lov l, edc_lov_values lv',
'where l.lov_id=lv.lov_id and lov_name=''PATIENT_VISIT_TYPE'' and lv.status=1',
'order by lv.sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071912543577116)
,p_name=>'P13_DURATION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT DURATION',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579071959648577117)
,p_name=>'P13_DURATION_FROM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := null;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT PARAM_ID_FK',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ELSE',
'    V_TEMP := NULL;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT D,',
'        R',
'   FROM (    ',
'         SELECT ''Visit -''||DISP_SEQ||'' ''||VISIT_NAME AS D,',
'                 PARAM_ID             AS R',
'            FROM EDC_PATIENT_VISIT_PARAMS',
'           WHERE STUDY_ID      = :APP_EDC_STUDY_ID',
'             AND :P13_PARAM_ID IS NULL',
'           -- While create a new recoard',
'       )',
'UNION ',
'',
'SELECT D,',
'       R',
'  FROM (',
'        --While edit recoard',
'         SELECT ''Visit -''||DISP_SEQ||'' ''||VISIT_NAME AS D,',
'                 PARAM_ID             AS R',
'            FROM EDC_PATIENT_VISIT_PARAMS',
'           WHERE STUDY_ID      = :APP_EDC_STUDY_ID',
'             AND PARAM_ID < :P13_PARAM_ID',
'             AND :P13_PARAM_ID IS NOT NULL',
'       )',
'   ',
' ORDER BY 2',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := 0;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NULL THEN',
'   --Get new visit#',
'    SELECT NVL(MAX(DISP_SEQ),0)+1',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NULL',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ',
'  ELSIF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT NVL(DISP_SEQ,1)',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  IF V_TEMP <> 1 THEN',
'      RETURN TRUE;',
'  ELSE',
'      RETURN FALSE;',
'  END IF;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN TRUE;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579072092857577118)
,p_name=>'P13_CALCULATED_ON'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP VARCHAR2(100) := null;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT CALCULATED_ON',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ELSE',
'    V_TEMP := NULL;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Schedule Date;Schedule Date,Actual Date;Actual Date'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579072196382577119)
,p_name=>'P13_WIND_P'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT WINDOW_PERIOD_P',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579072338485577120)
,p_name=>'P13_WIN_M'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT WINDOW_PERIOD_M',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579072390080577121)
,p_name=>'P13_CRF_PAGES'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT TOTAL_CRF_PAGES',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_attributes=>'style="width:30px; text-align:right;"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579072884410577126)
,p_name=>'P13_PARAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10579070437741577101)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579074487441577142)
,p_name=>'P13_WINDOW_PERIOD_ALERT_LBL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_post_element_text=>'<b><center>Window<br/>Period<br/>Alert</center></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10579074601093577143)
,p_name=>'P13_WINDOW_PERIOD_ALERT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(10579070484279577102)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch value accoarding to the edit visit',
'    SELECT WINDOW_PERIOD_ALERT',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  RETURN V_TEMP;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN NULL;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'CENTER-CENTER'
,p_field_template=>wwv_flow_imp.id(12146136537200911989)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073490921577132)
,p_validation_name=>'P13_VISIT_NAME have some value'
,p_validation_sequence=>10
,p_validation=>'P13_VISIT_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Visit Name must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579071668263577114)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073574651577133)
,p_validation_name=>'P13_VISIT_TYPE have some value'
,p_validation_sequence=>20
,p_validation=>'P13_VISIT_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Visit Type must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579071766796577115)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073736902577134)
,p_validation_name=>'P13_DURATION have some value'
,p_validation_sequence=>30
,p_validation=>'P13_DURATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Duration must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579071912543577116)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073779276577135)
,p_validation_name=>'P13_DURATION_FROM have some value'
,p_validation_sequence=>40
,p_validation=>'P13_DURATION_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Duration From must have some value.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := 0;',
'BEGIN',
'',
'  IF :P13_PARAM_ID IS NULL THEN',
'   --Get new visit#',
'    SELECT NVL(MAX(DISP_SEQ),0)+1',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NULL',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ',
'  ELSIF :P13_PARAM_ID IS NOT NULL THEN',
'  ',
'   --Fetch visit# accoarding to the edit visit',
'    SELECT NVL(DISP_SEQ,1)',
'      INTO V_TEMP',
'      FROM EDC_PATIENT_VISIT_PARAMS',
'     WHERE :P13_PARAM_ID IS NOT NULL',
'       AND PARAM_ID = :P13_PARAM_ID',
'       AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  END IF;',
'  ',
'  IF V_TEMP <> 1 AND :REQUEST IN (''UPDATE_IN_VISIT_SCHEDULE'',''ADD_IN_VISIT_SCHEDULE'')  THEN',
'      RETURN TRUE;',
'  ELSE',
'      RETURN FALSE;',
'  END IF;',
'  ',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RETURN TRUE;',
'END;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_associated_item=>wwv_flow_imp.id(10579071959648577117)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073990897577137)
,p_validation_name=>'P13_CALCULATED_ON must have some value'
,p_validation_sequence=>50
,p_validation=>'P13_CALCULATED_ON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Calculated On must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579072092857577118)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579073894195577136)
,p_validation_name=>'P13_WIND_P have some value'
,p_validation_sequence=>60
,p_validation=>'P13_WIND_P'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Window Period (+) must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579072196382577119)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10579074121597577138)
,p_validation_name=>'P13_WIN_M must have some value'
,p_validation_sequence=>70
,p_validation=>'P13_WIN_M'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Window Period (-) must have some value.'
,p_validation_condition=>'UPDATE_IN_VISIT_SCHEDULE,ADD_IN_VISIT_SCHEDULE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(10579072338485577120)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12146260844803428746)
,p_name=>'OPEN_MODAL_PAGE'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit-crfpages'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12146261148576428747)
,p_event_id=>wwv_flow_imp.id(12146260844803428746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Add CRF Pages'
,p_attribute_02=>'TRIG_ELEMENT_ATTR'
,p_attribute_03=>'f?p=&APP_ID.:1:&APP_SESSION.:::1:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'50'
,p_attribute_09=>'50'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10579074213911577139)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete visit schedule [DELETE_IN_VISIT_SCHEDULE]'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     IF :P13_PARAM_ID IS NOT NULL AND :APP_EDC_STUDY_ID IS NOT NULL THEN',
'       ',
'       --Delete selected recoard. ',
'        DELETE',
'          FROM EDC_PATIENT_VISIT_PARAMS',
'         WHERE PARAM_ID  = :P13_PARAM_ID',
'           AND STUDY_ID  = :APP_EDC_STUDY_ID;',
'     END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed'
,p_internal_uid=>9478123445770073046
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10579074303974577140)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update visit schedule [UPDATE_IN_VISIT_SCHEDULE]'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'     IF :P13_PARAM_ID IS NOT NULL AND :APP_EDC_STUDY_ID IS NOT NULL THEN',
'  ',
'         IF :P13_PARAM_ID <= 1 THEN',
'         ',
'             --While first recoard Update selected recoard. ',
'                UPDATE EDC_PATIENT_VISIT_PARAMS',
'                   SET VISIT_NAME      = :P13_VISIT_NAME   ,',
'                       VISIT_TYPE      = :P13_VISIT_TYPE   ,',
'                       DURATION        = :P13_DURATION     ,',
'                       WINDOW_PERIOD_P = :P13_WIND_P       ,',
'                       WINDOW_PERIOD_M = :P13_WIN_M        ,',
'                       TOTAL_CRF_PAGES = :P13_CRF_PAGES    ,',
'                       CALCULATED_ON   = :P13_CALCULATED_ON,',
'                       RND_FLG         = :P13_RND_FLG,',
'                       SFL_FLG         = :P13_SFL_FLG,',
'                       DISPNS_FLG      = :P13_DISPNS_FLG,',
'                       CMPLT_FLG       = :P13_CMPLT_FLG,',
'                       WINDOW_PERIOD_ALERT = :P13_WINDOW_PERIOD_ALERT',
'                 WHERE PARAM_ID = :P13_PARAM_ID',
'                   AND STUDY_ID = :APP_EDC_STUDY_ID;',
'  ',
'         ELSIF :P13_PARAM_ID > 1 THEN',
'  ',
'               --While second or more recoard Update selected recoard. ',
'                UPDATE EDC_PATIENT_VISIT_PARAMS',
'                   SET VISIT_NAME      = :P13_VISIT_NAME   ,',
'                       VISIT_TYPE      = :P13_VISIT_TYPE   ,',
'                       DURATION        = :P13_DURATION     ,',
'                       PARAM_ID_FK     = :P13_DURATION_FROM,',
'                       WINDOW_PERIOD_P = :P13_WIND_P       ,',
'                       WINDOW_PERIOD_M = :P13_WIN_M        ,',
'                       TOTAL_CRF_PAGES = :P13_CRF_PAGES    ,',
'                       CALCULATED_ON   = :P13_CALCULATED_ON,',
'                       RND_FLG         = :P13_RND_FLG,',
'                       SFL_FLG         = :P13_SFL_FLG,',
'                       DISPNS_FLG      = :P13_DISPNS_FLG,',
'                       CMPLT_FLG       = :P13_CMPLT_FLG,',
'                       WINDOW_PERIOD_ALERT = :P13_WINDOW_PERIOD_ALERT',
'                 WHERE PARAM_ID = :P13_PARAM_ID',
'                   AND STUDY_ID = :APP_EDC_STUDY_ID;',
'          END IF;',
'     END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_IN_VISIT_SCHEDULE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Action Processed'
,p_internal_uid=>9478123535833073047
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10579074438115577141)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add new visit schedule [ADD_IN_VISIT_SCHEDULE]'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMP NUMBER := 0;',
'BEGIN',
'',
'     IF :P13_PARAM_ID IS NULL AND :APP_EDC_STUDY_ID IS NOT NULL THEN',
'       ',
'              ',
'              IF :P13_PARAM_SEQ <= 1 THEN',
'                  ',
'                  --While first visit Insert new recoard. ',
'                    INSERT INTO EDC_PATIENT_VISIT_PARAMS (DISP_SEQ       ,',
'                                                          VISIT_NAME     ,',
'                                                          VISIT_TYPE     ,',
'                                                          DURATION       ,',
'                                                          WINDOW_PERIOD_P,',
'                                                          WINDOW_PERIOD_M,',
'                                                          TOTAL_CRF_PAGES,',
'                                                          STUDY_ID       ,',
'                                                          CALCULATED_ON  ,',
'                                                          WINDOW_PERIOD_ALERT,',
'                                                          RND_FLG,',
'                                                          SFL_FLG,',
'                                                          DISPNS_FLG,',
'                                                          CMPLT_FLG',
'                                                         )',
'                                                  VALUES (:P13_PARAM_SEQ    ,',
'                                                          :P13_VISIT_NAME   ,',
'                                                          :P13_VISIT_TYPE   ,',
'                                                          :P13_DURATION     ,',
'                                                          :P13_WIND_P       ,',
'                                                          :P13_WIN_M        ,',
'                                                          :P13_CRF_PAGES    ,',
'                                                          :APP_EDC_STUDY_ID ,',
'                                                          :P13_CALCULATED_ON,',
'                                                          :P13_WINDOW_PERIOD_ALERT,',
'                                                          :P13_RND_FLG,',
'                                                          :P13_SFL_FLG,',
'                                                          :P13_DISPNS_FLG,',
'                                                          :P13_CMPLT_FLG',
'                                                          );',
'              ',
'              ELSIF :P13_PARAM_SEQ > 1 THEN',
'',
'                   --While second or more visit Insert new recoard. ',
'                    INSERT INTO EDC_PATIENT_VISIT_PARAMS (DISP_SEQ       ,',
'                                                          VISIT_NAME     ,',
'                                                          VISIT_TYPE     ,',
'                                                          DURATION       ,',
'                                                          PARAM_ID_FK    ,',
'                                                          WINDOW_PERIOD_P,',
'                                                          WINDOW_PERIOD_M,',
'                                                          TOTAL_CRF_PAGES,',
'                                                          STUDY_ID       ,',
'                                                          CALCULATED_ON  ,',
'                                                          WINDOW_PERIOD_ALERT,',
'                                                           RND_FLG,',
'                                                          SFL_FLG,',
'                                                          DISPNS_FLG,',
'                                                          CMPLT_FLG',
'                                                         )',
'                                                  VALUES (:P13_PARAM_SEQ    ,',
'                                                          :P13_VISIT_NAME   ,',
'                                                          :P13_VISIT_TYPE   ,',
'                                                          :P13_DURATION     ,',
'                                                          :P13_DURATION_FROM,',
'                                                          :P13_WIND_P       ,',
'                                                          :P13_WIN_M        ,',
'                                                          :P13_CRF_PAGES    ,',
'                                                          :APP_EDC_STUDY_ID ,',
'                                                          :P13_CALCULATED_ON,',
'                                                          :P13_WINDOW_PERIOD_ALERT,',
'                                                          :P13_RND_FLG,',
'                                                          :P13_SFL_FLG,',
'                                                          :P13_DISPNS_FLG,',
'                                                          :P13_CMPLT_FLG                                                         ',
'                                                          );',
'                  END IF;',
'     END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed'
,p_internal_uid=>9478123669974073048
);
wwv_flow_imp.component_end;
end;
/
