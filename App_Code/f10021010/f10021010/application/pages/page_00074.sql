prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_tab_set=>'TS1'
,p_name=>'Unscheduled Visit(s)'
,p_step_title=>'Unscheduled Visit(s)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6652446541624910159)
,p_name=>'Unscheduled Visit(s)'
,p_template=>wwv_flow_imp.id(11045181488778407888)
,p_display_sequence=>16
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "PATIENT_VISIT_ID",',
'       "PATIENT_PROFILE_ID",',
'       "VISIT_NUMBER",',
'       "VISIT_TITLE",',
'       "VISIT_TYPE",',
'       "ACTUAL_DATE",',
'       "DESCRIPTION",',
'       DENSE_RANK() OVER(PARTITION BY PATIENT_PROFILE_ID ORDER BY PATIENT_VISIT_ID) DR',
'  from "#OWNER#"."EDC_PATIENT_VISIT" ',
' where patient_profile_id = :P37_PATIENT_PROFILE_ID',
'   AND VISIT_TYPE = ''Unscheduled''',
''))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(11045183173560407891)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Unscheduled Visit Generated.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.set_region_column_width(
 p_id=>wwv_flow_imp.id(6652446541624910159)
,p_plug_column_width=>'style="width:750px"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652447302895910162)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_VISIT_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'PATIENT_VISIT_ID'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'anchor',
'APP_ID#:82:#APP_SESSION#::::P82_PATIENT_VISIT_ID:#PATIENT_VISIT_ID#'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652447667855910163)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_PROFILE_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'PATIENT_PROFILE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652448031507910164)
,p_query_column_id=>3
,p_column_alias=>'VISIT_NUMBER'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'VISIT_NUMBER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652448438382910164)
,p_query_column_id=>4
,p_column_alias=>'VISIT_TITLE'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'VISIT_TITLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652448879031910165)
,p_query_column_id=>5
,p_column_alias=>'VISIT_TYPE'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'VISIT_TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652449297947910165)
,p_query_column_id=>6
,p_column_alias=>'ACTUAL_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Visit Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'ACTUAL_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6652449653820910165)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'SUN_21010_DEV'
,p_ref_table_name=>'EDC_PATIENT_VISIT'
,p_ref_column_name=>'DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4138818002204690706)
,p_query_column_id=>8
,p_column_alias=>'DR'
,p_column_display_sequence=>2
,p_column_heading=>'Visit #'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6654046654861248365)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:RP:APP_EDC_PATIENT_VISIT_ID,P37_PATIENT_PROFILE_ID:#PATIENT_VISIT_ID#,#PATIENT_PROFILE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6652452805180910174)
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
 p_id=>wwv_flow_imp.id(6652452108397910169)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6652446541624910159)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(11045186175944407897)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:82'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STATUS NUMBER;',
'  V_CNT1 NUMBER;',
'  V_CNT2 NUMBER;',
'BEGIN',
'  SELECT STATUS',
'    INTO V_STATUS',
'    FROM EDC_PATIENT_PROFILE',
'   WHERE PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  SELECT COUNT(PATIENT_VISIT_ID)',
'    INTO V_CNT1',
'    FROM EDC_PATIENT_VISIT',
'   WHERE PARAM_ID = 4',
'     AND PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  SELECT COUNT(IS_IP_DISPENSED)',
'    INTO V_CNT2',
'    FROM IWRS_CRF_DM_IP A',
'    JOIN EDC_PATIENT_VISIT B',
'      ON A.PATIENT_VISIT_ID = B.PATIENT_VISIT_ID',
'     AND B.PARAM_ID = 4',
'     AND B.PATIENT_PROFILE_ID = :P37_PATIENT_PROFILE_ID;',
'',
'  IF V_STATUS = 3 THEN',
'    IF V_CNT1 = V_CNT2 THEN',
'      RETURN TRUE;',
'    ELSE',
'      RETURN FALSE;',
'    END IF;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp.component_end;
end;
/
